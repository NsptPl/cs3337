<script>
  import LoginWithSpotify from '$lib/LoginWithSpotify.svelte';
  import PlaylistCreationForm from '$lib/PlaylistCreationForm.svelte';

  import { storedToken } from '../stores';
</script>

<svelte:head>
  <title>Harmony</title>
  <meta
    name="description"
    content="Listen in harmony with your coworkers by easily generating a playlist to meet your needs, powered through Spotify!"
  />
</svelte:head>

{#if $storedToken}
  <PlaylistCreationForm />
{:else}
  <LoginWithSpotify />
{/if}