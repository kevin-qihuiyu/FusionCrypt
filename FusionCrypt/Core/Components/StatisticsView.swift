//
//  StatisticsView.swift
//  FusionCrypt
//
//  Created by qihuiyu on 19/04/2023.
//

import SwiftUI

struct StatisticsView: View {
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.green :
                                Color.theme.red)
            // Use opacity instead of conditional rendering to ensure alignment of views
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticsView(stat: dev.stat1)
                .previewLayout(.sizeThatFits)
            StatisticsView(stat: dev.stat2)
                .previewLayout(.sizeThatFits)
            StatisticsView(stat: dev.stat3)
                .previewLayout(.sizeThatFits)

        }
    }
}
