﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Banner" %>
<style>
    .aa, .bb, .cc{
        left:-200px;
        opacity:0;
        position:relative;
        color:#000066;

    }
</style>
<script>
    
    $(document).ready(function () {
        function animate() {
            var i=0;
            for (i = 0; i < 500; i++) {
                $('.aa').animate({ left: '0px', opacity: 1 }, 1500).delay(2500);
                $('.bb').animate({ left: '0px', opacity: 1 }, 1700).delay(2300);
                $('.cc').animate({ left: '0px', opacity: 1 }, 2000).delay(2000);

                $('.aa').animate({ left: '200px', opacity: 0 }, 2000).delay(500);
                $('.bb').animate({ left: '200px', opacity: 0 }, 1700).delay(800);
                $('.cc').animate({ left: '200px', opacity: 0 }, 1500).delay(1000);

                $('.aa').animate({ left: '-200px', opacity: 0 }, 0).delay(500);
                $('.bb').animate({ left: '-200px', opacity: 0 }, 0).delay(500);
                $('.cc').animate({ left: '-200px', opacity: 0 }, 0).delay(500);
            }
            $('.aa').animate({ left: '0px', opacity: 1 }, 1500).delay(2500);
            $('.bb').animate({ left: '0px', opacity: 1 }, 1700).delay(2300);
            $('.cc').animate({ left: '0px', opacity: 1 }, 2000).delay(2000);

        }
        animate();
    });

</script>

<div id="animationArea">
<h4 class="aa">Hi USER,</h4>
<h4 class="bb">Welcome to TALK REAL PEOPLE.</h4><br />
<h4 class="cc"> Talk with Genuine People, Have A Nice Day</h4>
</div>