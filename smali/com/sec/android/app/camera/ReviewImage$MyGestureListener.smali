.class Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReviewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ReviewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ReviewImage;Lcom/sec/android/app/camera/ReviewImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    .line 384
    .local v0, imageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$300(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->getZoomInEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$300(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->getZoomOutEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 395
    :goto_0
    return v1

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomTo(F)V

    .line 394
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 395
    const/4 v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v1

    const/high16 v2, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomToPoint(FFF)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    .line 363
    .local v0, imageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 364
    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouch2;->postTranslateCenter(FF)V

    .line 366
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$600(Lcom/sec/android/app/camera/ReviewImage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$700(Lcom/sec/android/app/camera/ReviewImage;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 377
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$100(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$500(Lcom/sec/android/app/camera/ReviewImage;)V

    goto :goto_0
.end method
