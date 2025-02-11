import SwiftUI


struct BingeRow: View {
    var series:Series
    var body: some View{
        NavigationView{
            HStack{
                Image(series.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(series.title)
                
                
            }
            NavigationLink(destination: BingeRow(series: series)){
                BingeRow(series: series) }
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
