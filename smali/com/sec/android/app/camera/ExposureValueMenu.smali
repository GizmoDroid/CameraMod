.class public Lcom/sec/android/app/camera/ExposureValueMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ExposureValueMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;,
        Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;,
        Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x32L

.field public static final EXPOSURE_STEP:F = 0.5f

.field private static final LONG_PRESSED:I = 0x1

.field public static final MAX_EXPOSURE_VALUE:I = 0x4

.field public static final MAX_PROGRESS_BAR_VALUE:I = 0x8

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field public static final MIN_EXPOSURE_VALUE:I = -0x4

.field private static final MSG_TIMER_OUT:I = 0x1

.field public static final PROGRESS_RANGE_DELTA:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "ExposureValueMenu"

.field public static final ZERO_POSITION_VALUE_OF_PROGRESS_BAR:I = 0x4


# instance fields
.field private mExposureValue:I

.field private mExposureValueSeekBar:Landroid/widget/SeekBar;

.field mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mExposureValueTextview:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongTouchHandler:Landroid/os/Handler;

.field private mLongtouch:Z

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

.field private mSelectedView:Landroid/view/View;

.field private popTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 60
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 63
    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 64
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;Lcom/sec/android/app/camera/ExposureValueMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;Lcom/sec/android/app/camera/ExposureValueMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ExposureValueMenu$1;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/ExposureValueMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/ExposureValueMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const v4, 0x7f0a0099

    const v3, 0x7f0a0098

    const/4 v5, 0x0

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 113
    const-string v1, "2560x1920"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private resetExposureValueTimer()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->startExposureValueMenuTimer()V

    .line 224
    return-void
.end method

.method private setSeekBarValue(Landroid/widget/SeekBar;I)V
    .locals 1
    .parameter "seekBar"
    .parameter "value"

    .prologue
    .line 288
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 289
    return-void
.end method

.method private stopExposureValueMenuTimer()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    return-void
.end method

.method private updatePopupText(Landroid/widget/SeekBar;F)V
    .locals 12
    .parameter "aSeekBar"
    .parameter "mValue"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    .local v4, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    .line 258
    .local v5, seekBarleftPadding:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 259
    .local v1, leftPadding:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 260
    .local v8, topPadding:I
    iget v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v11, v5, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 261
    .local v6, strips:F
    const/high16 v10, 0x4000

    mul-float/2addr v10, p2

    float-to-int v10, v10

    add-int/lit8 v3, v10, 0x4

    .line 262
    .local v3, offset:I
    iget v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v11, v3

    mul-float/2addr v11, v6

    float-to-int v11, v11

    add-int v0, v10, v11

    .line 263
    .local v0, leftMargin:I
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 264
    .local v7, topMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 265
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v10, v0, v1

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 266
    sub-int v10, v7, v8

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 267
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a009e

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 269
    .local v9, tv:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method private updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V
    .locals 9
    .parameter "aSeekBar"
    .parameter "tv"
    .parameter "mValue"

    .prologue
    const/4 v8, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .local v2, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    .line 243
    .local v3, seekBarleftPadding:I
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 244
    .local v4, strips:F
    const/high16 v6, 0x4000

    mul-float/2addr v6, p3

    float-to-int v6, v6

    add-int/lit8 v1, v6, 0x4

    .line 245
    .local v1, offset:I
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v1

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int v0, v6, v7

    .line 246
    .local v0, leftMargin:I
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 247
    .local v5, topMargin:I
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .restart local v2       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 311
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 191
    return-void

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->resetExposureValueTimer()V

    .line 182
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateExposureValueAndText(I)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->resetExposureValueTimer()V

    .line 187
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateExposureValueAndText(I)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0098
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 280
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 315
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 333
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 320
    goto :goto_0

    .line 323
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 324
    goto :goto_0

    .line 327
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 330
    goto :goto_0

    :cond_5
    move v0, v2

    .line 333
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 355
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 342
    goto :goto_0

    .line 345
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 346
    goto :goto_0

    .line 349
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 352
    goto :goto_0

    :cond_5
    move v0, v2

    .line 355
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 152
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->setLongTouch(Z)V

    .line 153
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    return v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 284
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->startExposureValueMenuTimer()V

    .line 302
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 303
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExposureValueMenu;->onClick(Landroid/view/View;)V

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 170
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setLongTouch(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setLongTouch(Z)V
    .locals 0
    .parameter "longTouch"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    .line 160
    return-void
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    .line 211
    return-void
.end method

.method public startExposureValueMenuTimer()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void
.end method

.method public updateExposureValueAndText(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f00

    .line 196
    const/4 v0, -0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;->onExposureValueChanged(I)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0
.end method
