.class Lcom/sec/android/app/camera/AdjustMenu$2;
.super Ljava/lang/Object;
.source "AdjustMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AdjustMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AdjustMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AdjustMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v4, 0x2

    .line 190
    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/AdjustMenu;->access$1002(Lcom/sec/android/app/camera/AdjustMenu;I)I

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$1200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/AdjustMenu;->access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/AdjustMenu;->access$700(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$800(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$1200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$800(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$900(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$1200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$2;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$900(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    return-void
.end method
