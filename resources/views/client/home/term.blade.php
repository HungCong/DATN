@extends('client.layouts.mainss')
@section('title','Introduce')
@section('content')
    <section class="blog-details-wrap ptb--120 bg__white">
    <div class="container" style="min-height: 1000px">
        <div class="form-group">
            <h2>{{-- {{trans('allclient.1qaz')}} --}}Điều khoản và điều kiện</h2>
            <hr>
        </div>
        <div class="form-group">
            <strong>{{-- {{trans('allclient.2qaz')}} --}}Giới thiệu</strong>
            <p>{{-- {{trans('allclient.3qaz')}} --}}UTTSOFT là doanh nghiệp hoạt động trong lĩnh vực công nghệ thông tin, tạo ra những sản phẩm phần mềm chuyên dụng, phần mềm phù hợp với người sử dụng do kỹ sư công nghệ thông tin của Đại học Công nghệ giao thông vận tải xây dựng và phát triển. Với sứ mệnh tạo ra những sản phẩm công nghệ hữu ích phục vụ cho con người, xã hội không chỉ trong nước mà còn mong muốn tiến xa trên thị trường quốc tế.<br>UTTSOFT chúng tôi có trụ sở chính tại số 5, Lê Đại Hành, Thành phố Ninh Bình, Tỉnh Ninh Bình. </p>
        </div>
        <div class="form-group">
            <strong>{{-- {{trans('allclient.4qaz')}} --}}Hướng dẫn mua hàng</strong>
            <p>{{-- {{trans('allclient.5qaz')}} --}}Khi vào trang web của chúng tôi quý khách có thể tham khảo các phần mềm chúng tôi hiện có với đầy đủ chi tiết thông tin. Sau khi lựa chọn phần mềm quý khách vui lòng tạo tài khoản cá nhân để mua hàng. Tiếp dó, quý khách điền thông tin cá nhân lại một lần nữa. Sau khi nhận được thông tin chúng tôi sẽ liên hệ lại. Và sẽ gửi thông tin kích hoạt phần mềm hoàn chỉnh về mail của quý khách.</p>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.6qaz')}} --}}Chính sách bảo mật</strong>
            <p>{{-- {{trans('allclient.7qaz')}} --}}Mọi thông tin của quý khách và thông tin giao dịch sẽ được chúng tôi lưu lại và sẽ được bảo mật.</p>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.8qaz')}} --}}Chính sách vận chuyển</strong>
            <p>{{-- {{trans('allclient.9qaz')}} --}}Quý khách hàng hoàn toàn có thể lựa chọn hình thức vận chuyển phù hợp cho mình. Quý khách có thể chọn hình thức đến địa chỉ của SOFTVN để nhận hàng sau khi đặt hàng hoặc sử dụng dịch vụ vận chuyển của SOFTVN với những lưu ý như sau:<br> - Thời gian vận chuyển: trong ngày với các đơn hàng nhỏ lẻ, có phạm vi nhỏ hơn 15km.<br> - Đối với các đơn hàng đặt hàng quốc tế, chúng tôi sẽ gửi hàng hóa và hóa đơn qua các đơn vị giao vận như Viettel Post, VNPT…<br> - Phí vận chuyển: Các đơn hàng được vận chuyển miễn phí, tức là Quý khách hàng sẽ không mất chi phí giao hàng.
            </p>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.10qaz')}} --}}Chính sách bảo hành bảo trì</strong>
            <p>{{-- {{trans('allclient.11qaz')}} --}}Đối với các sản phẩm, hàng hoá phần cứng mà UTTSOFT cung cấp, xin quý khách vui lòng lưu ý một số thông tin sau:<br> - Mọi  vấn đề bảo hành được áp dụng theo quy định của nhà phân phối tại Việt Nam<br> - Đối với các sản phẩm được bảo hành tận nơi, Quý khách vui lòng liên hệ trực tiếp với dịch vụ bảo hành<br> - Các dịch vụ về lắp đặt và cấu hình các thiết bị phần cứng sẽ được làm rõ trong hợp đồng kinh tế giữa hai bên.</p>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.12qaz')}} --}}Chính sách đổi trả</strong>
            <p>{{-- {{trans('allclient.13qaz')}} --}} - Phần mềm được cung cấp bởi UTTSOFT luôn là chính hãng của chúng tôi. Chúng tôi cam kết đổi trả hoặc hoàn tiền gấp năm lần nếu Quý khách cung cấp đủ thông tin chứng minh chúng tôi cung cấp phần mềm không chính hãng.<br> - Nếu phần mềm phát sinh ra lỗi chúng tôi sẽ sửa chữa, cập nhật nhanh nhất cho quý khách<br> - Các phần mềm được bảo hành theo quy định của chúng tôi sẽ được thông báo trước khi quý khách mua hàng. Nếu gặp bất kỳ khó khăn hay khiếu nại nào, Quý khách vui lòng liên hệ tới SOFTUTT để được hỗ trợ nhanh chóng và chính xác nhất.<br> - Sản phẩm của chúng tôi có thời hạn đổi trả tối đa là 30 ngày.</p>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.14qaz')}} --}}Chính sách thanh toán</strong>
            <p>{{-- {{trans('allclient.15qaz')}} --}} - Dựa theo hợp đồng kinh tế với Quý khách hàng, thông thường, các đơn hàng đầu tiên chúng tôi sẽ yêu cầu khoản đặt cọc 100% giá trị đơn hàng.<br> - Quý khách có thể thanh toán linh hoạt qua thẻ trước hoặc trả tiền sau khi nhận phần mềm tại nhà.<br> - Đối với các đơn hàng phần mềm dạng cá nhân, Quý khách hàng có thể yêu cầu chúng tôi chuyển hàng và thanh toán sau qua COD.<br> - Khi hoàn thành hợp đồng kinh tế, chúng tôi luôn có nghĩa vụ xuất hoá đơn VAT với thông tin mà Quý khách đã cung cấp. Mọi trường hợp mà nhân viên của chúng tôi từ chối cung cấp hoá đơn VAT là sai quy định của chúng tôi. Quý khách vui lòng gửi phản hồi cho chúng tôi để được hỗ trợ các chính sách đầy đủ nhất.</p>
            <p>
                {{-- {{trans('allclient.16qaz')}} --}}
            </p><hr>
        </div>

        <div class="form-group">
            <strong>{{-- {{trans('allclient.17qaz')}} --}}Liên hệ với chúng tôi</strong>
            <p>{{-- {{trans('allclient.18qaz')}} --}}Rất mong quý khách liên hệ với chúng tôi khi có mất cứ thắc mắc cũng như phản hồi nào<br> - Địa chỉ: Số 5, ĐƯờng Lê Đại Hành, Phường Thanh Bình, Thành phố Ninh Bình, Tỉnh Ninh Bình, Việt Nam.<br> - Email: anhtai0135@gmail.com<br> - Số điện thoại: 0356.735.120</p>
        </div>

    </div>
    </section>
@endsection
@section('script1')
@endsection
