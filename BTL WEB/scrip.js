  let index = 1;

function sach() {
  if(index != 1 ){
    return;}
    else{

document.getElementById('nutsach').style.backgroundColor = "blue";
    let html = `
    <div class="sach" ><h2>Sách</h2>
      <button onclick="themsach()" id="themsachmoi" >Thêm sách mới </button>
      </div>
  <table>
    
    <thead>
      <tr>
        <th>STT</th>
        <th>Hình ảnh</th>
        <th>Tựa sách</th>
        <th>Tác giả</th>
        <th>Giá trị</th>
        <th>Số lượng</th>
        <th>Chủ đề</th>
        <th>Số cảm nghĩ</th>
        <th>Lượt đọc</th>
        <th>Lượt xem</th>
        <th>Hành động</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td><img src="../BTL WEB/Pic/image_182274.jpg" style="width: 50px;" </td>
        <td>Truyện trước khi ngủ</td>
        <td>Kim Đồng</td>
        <td>50.000đ</td>
        <td>100</td>
        <td>Thiếu nhi</td>
        <td>0</td>
        <td>0</td>
        <td>3</td>
        <td>
        <button style="background-color: rgb(237, 237, 53); color: black;; border-radius: 5px; height: 35px; width: 35px; padding: 10px 0px; "> <i class="fa-solid fa-gear"></i></button>
        <button style="background-color: red; color: white;; border-radius: 5px; height: 35px; width: 35px; padding: 10px 0px;"><i class="fa-solid fa-trash-can"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
    
    
    ` ;
   document.getElementById('main2').insertAdjacentHTML('beforeend' , html);
   index = 2 ;
   console.log(index);
  };
    
};
function themsach() {
    document.getElementById('themsachmoi').style.backgroundColor = "blue";

}
