# FusionCrypt

A crypto currency app that provides all information about the hottest crypto currencies in the market

## Technical Points

- SwiftUI declarative UI: ZStack, HStack, Spacer...
- Color schemes for light and dark mode
- SwiftUI Animations
- CoinGecko Crypto Currency API, Data model generation with quicktype
- Number and string formatting
- Design Patterns: MVVM, singleton, extensions
- Use a service layer publish/subscription model for coin data calls.
- Use a network utility class that encapsulate networking requests and error handling, error enums
- Combine framework: @Publish, ObservableObject, @StateObject, environment object, tryMap, sink, subsription, cancellable
- Local persistence with FileManager
- Implement a search bar: HStack, overlay, onTapGesture, searchText @Binding, combine subscriptions, filter, debounce for performance

![HomePage](docs/0-home-page.png)
