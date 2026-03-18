$content = Get-Content "c:\Users\jakef\OneDrive\Desktop\HK\hatekid\news.html" -Raw

$replacement = @'
            <article>
    <header>
        <h1>Latest Updates</h1>
    </header>

    <section class="content">
        <div class="flex-1">
            <header>
                <h2>New Album "Rebellion" Out Now</h2>
                <em>February 14, 2026</em>
            </header>
            <p>We're thrilled to announce the release of our latest album <strong>"Rebellion"</strong>. This raw and energetic collection captures everything HATEKID stands for. From the opening track to the final note, this album is pure punk fury and defiance.</p>
            <p>Available on all streaming platforms and limited edition vinyl at our shows!</p>
        </div>
    </section>

    <section class="content">
        <div class="flex-1">
            <header>
                <h2>Upcoming Tour Dates</h2>
                <em>Spring 2026</em>
            </header>
            <ul>
                <li><strong>March 8</strong> - The Venue, New York, NY</li>
                <li><strong>March 15</strong> - Electric Room, Boston, MA</li>
                <li><strong>March 22</strong> - Stone Tavern, Philadelphia, PA</li>
                <li><strong>April 5</strong> - The Fillmore, San Francisco, CA</li>
                <li><strong>April 12</strong> - The Fonda, Los Angeles, CA</li>
            </ul>
            <p>Tickets available now. Be part of the chaos!</p>
        </div>
    </section>

    <section class="content">
        <div class="flex-1">
            <header>
                <h2>Single "Electric Chaos" Hits #1</h2>
                <em>January 30, 2026</em>
            </header>
            <p>Our latest single <strong>"Electric Chaos"</strong> has dominated the punk charts! The track showcases our signature aggressive sound with infectious energy that's impossible to ignore. Thank you to all our fans who made this possible.</p>
            <p>Don't miss the music video dropping this Friday!</p>
        </div>
    </section>

    <section class="content">
        <div class="flex-1">
            <header>
                <h2>Festival Appearances</h2>
                <em>Summer 2026</em>
            </header>
            <p>Mark your calendars! HATEKID will be performing at:</p>
            <ul>
                <li>Punk Rock Summer Fest - June 15</li>
                <li>Electric Rebellion Festival - July 4</li>
                <li>Underground Sounds Festival - August 10</li>
            </ul>
            <p>More details coming soon. Stay tuned!</p>
        </div>
    </section>
        </article>
'@

$newContent = $content -replace '            <article>.*?        </article>', $replacement, [System.Text.RegularExpressions.RegexOptions]::Singleline

$newContent | Set-Content "c:\Users\jakef\OneDrive\Desktop\HK\hatekid\news.html" -Encoding UTF8
Write-Host "File updated successfully"
