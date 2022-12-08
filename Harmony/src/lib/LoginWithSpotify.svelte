<script lang="ts">
  import { faIdBadge, faKey, faMusic, faSquarePollHorizontal } from '@fortawesome/free-solid-svg-icons';
  import SpotifyApi from 'spotify-web-api-js';
  import { onMount } from 'svelte';
  import Icon from 'svelte-awesome';

  import { goto } from '$app/navigation';

  import { getMe } from '../api';
  import { storedToken, storedUser } from '../stores';
  import SpotifyButton from './SpotifyButton.svelte';

  const spotifyApi = new SpotifyApi();
  const authEndpoint = 'https://accounts.spotify.com/authorize';
  const clientId = '7cd0d42e3b624f149b6f6df4a4c38111';
  const redirectUri = import.meta.env.VITE_APP_BASE_URL;
  const scopes = [
    'playlist-modify-public',
    'playlist-modify-private',
    'ugc-image-upload',
  ];

  const authorizeWithSpotify = () => {
    const spotifyAuthURL = `${authEndpoint}?client_id=${clientId}&redirect_uri=${redirectUri}&scope=${scopes.join(
      '%20',
    )}&response_type=token&show_dialog=true`;

    window.location.href = spotifyAuthURL;
  };

  const setAccessToken = () => {
    const hashFromURL: {
      access_token: string;
      expires_in: string;
      token_type: string;
    } = window.location.hash
      .slice(1)
      .split('&')
      .reduce(
        function (
          initial: {
            access_token: string;
            expires_in: string;
            token_type: string;
          },
          item,
        ) {
          if (item) {
            var parts = item.split('=');
            // @ts-expect-error Element implicitly has an 'any' type because expression of type 'string' can't be used to index type '{ access_token: string; expires_in: string; token_type: string; }'.
            initial[parts[0]] = decodeURIComponent(parts[1]);
          }
          return initial;
        },
        { access_token: '', expires_in: '', token_type: '' },
      );

    storedToken.set(hashFromURL.access_token);
    spotifyApi.setAccessToken($storedToken);
  };

  const getUserInformation = async () => {
    try {
      const response = await getMe();
      storedUser.set(response);
    } catch {
      storedToken.set(null);
      storedUser.set(undefined);
      await goto('/');
    }
  };

  onMount(() => {
    setAccessToken();

    if ($storedToken) {
      void getUserInformation();
    }
  });
</script>

<section class="img-bg">
  <div class="whi-te-gradient-bg">
    <div class="container mx-auto px-3">
      <div class="grid grid-cols-2 items-center gap-6 py-20 md:py-44">
        <div class="col-span-2 text-white md:col-span-1">
          <h1
            class="mb-10 inline-flex items-center text-3xl font-bold md:text-5xl"
          >
            <img
              src="/harmony_logo.png"
              alt="ConcertMash Logo"
              class="mr-3 h-20 w-20"
            />

            Harmony
          </h1> 
            <p class="mb-3">
              Are you tired of creating your playlists for upcoming concerts or
              festivals manually?
            </p>
            <p class="mb-3">
              With ConcertMash, you simply enter the artists, choose which song
              types should be included, and your playlist will be ready in
              seconds.
            </p>
            <p>Just login with Spotify and get started right away!</p>
        </div>

        <div class="col-span-2 text-center md:col-span-1">
          <SpotifyButton {authorizeWithSpotify} />
        </div>
      </div>
    </div>
  </div>
</section>

<section class="relative overflow-hidden py-16">
  <div class="container mx-auto px-3">
    <h2 class="mb-3 text-center text-3xl font-bold text-harmony-black">How it works</h2>

    <div class="mb-10 grid h-full grid-cols-3 gap-6">
      <div class="col-span-3 flex flex-col md:col-span-1 md:flex-row">
        <div class="rounded-md border bg-white px-5 py-10 shadow-lg">
          <div class="design-dot-red" />
          <div class="design-dot-black" />
          <Icon data={faIdBadge} style="color:#65747a" class="mb-3" scale={1.5} />
          <h3 class="step-color mb-3 text-xl font-bold">Step 1: Login</h3>
          <p class="harmonytext">Log in and authenticate with Spotify in order to allow Harmony to do all the heavy lifting while you focus on what really matters!</p>
        </div>
      </div>
      <div class="col-span-3 flex flex-col md:col-span-1 md:flex-row">
        <div class="rounded-md border bg-white px-5 py-10 shadow-lg">
          <Icon data={faSquarePollHorizontal} style="color:#65747a" class="mb-3" scale={1.5} />
          <h3 class="step-color mb-3 text-xl font-bold">Step 2: Survey</h3>
          <p class="harmonytext">Fill out a simple survey based off your workplace preferences, upload a playlist cover, and give it a name.</p>
        </div>
      </div>
      <div class="col-span-3 flex flex-col md:col-span-1 md:flex-row">
        <div class="rounded-md border bg-white px-5 py-10 shadow-lg">
          <div class="design-black-2" />
          <div class="design-red-2" />
          <Icon data={faMusic} style="color:#65747a" class="mb-3" scale={1.5} />
          <h3 class="step-color mb-3 text-xl font-bold">Step 3: In Harmony</h3>
          <p class="harmonytext">Open Spotify and listen to your newly-created playlist with your co-workers, listening and working together, in Harmony!</p>
        </div>
      </div>
    </div>

    <div class="w-full text-center">
      <SpotifyButton {authorizeWithSpotify} />
    </div>
  </div>
</section>

<style lang="postcss">
  .step-color {
    -tw-bg-opacity: 1;
    color: rgb(192,33,1);
  }
</style>
