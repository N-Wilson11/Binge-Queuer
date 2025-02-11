//
//  SeriesList.swift
//  Binge Queuer
//
//  Created by Nathan Wilson on 11/02/2025.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        List(seriesSourceList){ series in
            BingeRow(series: series)
        }
    }
}

#Preview {
    SeriesList()
}
