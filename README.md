# News Application  

A Flutter-based news app that fetches and displays the latest articles with optimized image handling and responsive UI.  

## Features  
- Displays news articles with titles, subtitles, and images.  
- Implements a fallback mechanism for image loading with default placeholders.  
- Ensures stable performance even if articles are removed or images fail to load.  
- Displays a user-friendly message if an article is deleted from the source.  

## How It Works  
- Fetches articles dynamically and renders them in a clean and readable format.  
- Uses `CachedNetworkImage` and `Image.network` with an error-handling mechanism to ensure seamless user experience.  

## Error Handling  
- If an article's image fails to load:  
  - A default placeholder image is displayed.  
  - The app avoids crashes by handling exceptions gracefully.  
- If an article is deleted or unavailable:  
  - A clear message ("The article has been removed.") is displayed instead of leaving an empty or broken layout.  

