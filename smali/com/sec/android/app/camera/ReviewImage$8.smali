.class Lcom/sec/android/app/camera/ReviewImage$8;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/ImageGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public fullImageSizeToUse(II)I
    .locals 2
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 474
    const/16 v0, 0x800

    .line 475
    .local v0, imageViewSize:I
    const/16 v1, 0x800

    return v1
.end method

.method public imageLoaded(IILcom/sec/android/app/camera/RotateBitmap;Z)V
    .locals 3
    .parameter "pos"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isThumb"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v0, v0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-eq p1, v0, :cond_1

    .line 488
    invoke-virtual {p3}, Lcom/sec/android/app/camera/RotateBitmap;->recycle()V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    if-eqz p4, :cond_2

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {p3}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/BitmapCache;->put(ILandroid/graphics/Bitmap;)V

    .line 495
    :cond_2
    if-nez p2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_0
.end method

.method public loadOrder()[I
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/sec/android/app/camera/ReviewImage;->access$900()[I

    move-result-object v0

    return-object v0
.end method

.method public wantsFullImage(II)Z
    .locals 1
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 464
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wantsThumbnail(II)Z
    .locals 2
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$8;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/BitmapCache;->hasBitmap(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
