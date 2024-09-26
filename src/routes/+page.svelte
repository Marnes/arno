<script lang="ts">
    import {DateTime} from 'luxon';
    import img from '$lib/assets/Duke.jpeg';

    let now = $state(DateTime.now());
    const targetDate = DateTime.fromISO('2024-09-03T08:00');
    const breakReason = "HD Steering Crank assy on the drive rod"

    const diff = $derived(targetDate.diff(now, ['years', 'months', 'days', 'hours', 'minutes', 'seconds']));

    const popupHover: PopupSettings = {
        event: 'hover',
        target: 'popupHover',
        placement: 'top'
    };

    setInterval(() => {
        now = DateTime.now();
    }, 1000);
</script>

<div class="text-center flex flex-col gap-1 h-screen justify-center items-center p-2 md:p-5">
    <!--    Uncomment for running -->
    <span class="badge-icon preset-filled mb-5 w-12 h-12 !bg-green-500"></span>
    <!--    Uncomment for Broken -->
    <!--    <span class="badge-icon preset-filled mb-5 w-12 h-12 !bg-red-500"></span>-->
    <!--    Uncomment for in repairs -->
    <!--    <span class="badge-icon preset-filled mb-5 w-12 h-12 !bg-stone-700"></span>-->
    <span class="text-5xl md:text-7xl lg:text-8xl">{targetDate.toFormat('MMMM dd, yyyy')}</span>
    <span class="text-lg md:text-3xl lg:text-3xl md:mt-2">{breakReason}</span>
    <span class="text-sm md:text-lg lg:text-lg mt-3 md:mt-5">It has been {diff.years  * -1} years, {diff.months  * -1} months, {diff.days  * -1} days, {diff.hours  * -1} hours, {diff.minutes  * -1} minutes, and {diff.seconds.toFixed(0) * -1} seconds since Duke last broke</span>
    <img alt="Duke" src={img} width="500" class="mt-6 md:mt-6" />
    <a href="/history" class="text-base mt-3 anchor">History</a>
</div>


