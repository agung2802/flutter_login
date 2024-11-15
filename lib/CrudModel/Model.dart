class ModelData {
  List<Map<String, dynamic>> data= [
    {
      "productName": "John",
      "price": 20,
      "image": "images/img24.jpg",
    },
    {
      "productName": "John",
      "price": 20,
      "image": "images/img24.jpg",
    },
    {
      "productName": "John",
      "price": 20,
      "image": "images/img24.jpg",
    }
  ];

  getData(){
    return data;
  }
  addData(Map<String, dynamic> data){
    this.data.add(data);
  }
}