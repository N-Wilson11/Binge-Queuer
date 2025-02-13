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
                    ForEach(seriesDataList,id : \Series.id){
                        series in
                        NavigationLink(destination: SeriesDetail(series: series)){
                            BingeRow(series: series)
                                .frame(height: 60)
                        }
                    }
                    .onDelete(perform: delete)
                    
                }.navigationTitle("Series")
                    .toolbar{ EditButton() }
            }
        }
    }
    
    func delete(at offsets: IndexSet){
        seriesDataList.remove(atOffsets: offsets)
    }
}



#Preview {
    SeriesList()
}
