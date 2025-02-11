import SwiftUI



struct BingeRow: View {
    var series:Series
    var body: some View{
        HStack{
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
    
}

#Preview{
    Group{
        BingeRow(series: seriesSourceList[0])
        BingeRow(series: seriesSourceList[1])
        BingeRow(series: seriesSourceList[2])
        BingeRow(series: seriesSourceList[3])
        BingeRow(series: seriesSourceList[4])
        BingeRow(series: seriesSourceList[5])
    }
}
