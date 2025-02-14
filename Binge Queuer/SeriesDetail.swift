import SwiftUI
import MapKit


struct SeriesDetail: View {
    var series:Series
    var spacerSize: CGFloat = 10
    var mapHeight: CGFloat = 400
    var size: CGFloat = 200
    var body: some View {
        ScrollView{
            ZStack{
                MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                    .frame(height: mapHeight)
                
                CircleImage(image: Image(series.image)
                    .resizable())
                .offset(y: -spacerSize)
                .padding(.bottom, -spacerSize)
                .frame(width: size, height: size)
                
                
                
                
                
            }
            Text(series.title)
                .font(.title)
            Text("Seasons: " + String(series.seasons))
                .font(.caption)
            Spacer()
            Text("About " +  series.title)
                .font(.title3)
                .multilineTextAlignment(.leading)
            Text(series.description)
                .font(.body)
            
            
        }
        .navigationTitle(series.title )
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[0])
}
