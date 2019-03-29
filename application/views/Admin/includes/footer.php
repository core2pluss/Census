<footer class="main-footer">
        <strong>Copyright &copy; <a href="<?php echo base_url(); ?>">Core2Plus</a>.</strong> All rights reserved.
    </footer>
<!-- Bootstrap 3.3.6 -->
    <script src="<?= base_url() ?>public/bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url() ?>public/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?= base_url() ?>public/dist/js/demo.js"></script>
    <!-- page script -->
    <script type="text/javascript">
      $(".flash-msg").fadeTo(2000, 500).slideUp(500, function(){
        $(".flash-msg").slideUp(500);
    });
    </script>
    <script src="<?= base_url() ?>public/dist/js/jquery.mask.min.js"></script>
    <script type="text/javascript">
        var windowURL = window.location.href;
        pageURL = windowURL.substring(0, windowURL.lastIndexOf('/'));
        var x= $('a[href="'+pageURL+'"]');
            x.addClass('active');
            x.parent().addClass('active');
        var y= $('a[href="'+windowURL+'"]');
            y.addClass('active');
            y.parent().addClass('active');
    </script>
  </body>
</html>