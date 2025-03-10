//
//  SeriesList.swift
//  Binge Queuer
//
//  Created by Nathan Wilson on 11/02/2025.
//

import SwiftUI

struct SeriesList: View {
    @State var seriesDataList = seriesSourceList
    var body: some View {
        NavigationView{
            HStack{
                List(){
                    ForEach(seriesDataList){
                        series in
                        NavigationLink(destination: SeriesDetail(series: series)){
                            BingeRow(series: series)
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                }.navigationTitle("Binge Queuer")
                    .toolbar{ EditButton() }
            }
        }
    }
    
    func delete(at offsets: IndexSet){
        seriesDataList.remove(atOffsets: offsets)
    }
    private func move(from source: IndexSet, to destination: Int) {
        seriesDataList.move(fromOffsets: source, toOffset: destination)
    }
}



#Preview {
    SeriesList()
}
