<script lang="ts">
  const didYouKnowFacts = [
    'We are team 7 for class CS 3337-02, meeting on Fridays 4pm to 6:45pm',
    'It took approximately 2 months, or 60 days, for Midterm 1 to be graded.',
    "The first computer password was created in 1961, and it was 'password'.",
    "The first emoticon, a smiley face, was created in 1982 by a computer scientist.",
  ];

  const randomFact =
    didYouKnowFacts[Math.floor(Math.random() * didYouKnowFacts.length)];
</script>

<div
  class="fixed top-0 left-0 right-0 bottom-0 z-50 flex h-screen w-full flex-col items-center justify-center overflow-hidden bg-gray-900 opacity-75"
>
  <div
    class="loader mb-4 h-12 w-12 rounded-full border-4 border-t-4 border-gray-200 ease-linear"
  />
  <h2 class="text-center text-xl font-semibold text-white">Did you know?</h2>
  <p class="text-center text-white">
    {randomFact}
  </p>
</div>
