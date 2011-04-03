.class public Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1


# instance fields
.field private final MAX_MMS_SIZE:J

.field private final MAX_RECORDING_TIME:I

.field private final PAUSE_ANIM_DELAY:I

.field private final PROGRESSBAR_MAX:I

.field private final REC_ANIM_DELAY:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private final SECONDS_IN_A_MINUTE:I

.field private bIsRecordingMenuShown:Z

.field private isMMSMode:Z

.field private mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mLockIndicator:Landroid/widget/ImageView;

.field private mMMSLayout:Landroid/widget/RelativeLayout;

.field private mPauseAnimHandler:Landroid/os/Handler;

.field private mPauseAnimRunnable:Ljava/lang/Runnable;

.field private mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private final mPauseImageId:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecAnimHandler:Landroid/os/Handler;

.field private mRecAnimRunnable:Ljava/lang/Runnable;

.field private mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mRecIcon:Landroid/widget/ImageView;

.field private final mRecImageId:I

.field private mRecSizeText:Landroid/widget/TextView;

.field private mRecTimeText:Landroid/widget/TextView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopping:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x0

    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 36
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_MINUTE:I

    .line 37
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_AN_HOUR:I

    .line 38
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_DAY:I

    .line 39
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_RECORDING_TIME:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PROGRESSBAR_MAX:I

    .line 56
    const-wide/32 v0, 0xed800

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE:J

    .line 58
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PAUSE_ANIM_DELAY:I

    .line 59
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->REC_ANIM_DELAY:I

    .line 71
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 72
    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 74
    const v0, 0x7f0200f4

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecImageId:I

    .line 75
    const v0, 0x7f0200f3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseImageId:I

    .line 76
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 77
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 78
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 82
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doRecAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 432
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 433
    return-void
.end method

.method private doCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 204
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 210
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 211
    return-void
.end method

.method private doPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->pauseTimer()V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 225
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 230
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private doPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 397
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doRecAnim()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 406
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startTimer()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 182
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 189
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 199
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 442
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 443
    return-void
.end method

.method private hmsConvert(I)V
    .locals 12
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    const-string v11, ":"

    const-string v10, "0"

    const-string v9, ""

    .line 339
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 340
    const p1, 0x1517f

    .line 343
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 344
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 345
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 348
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 367
    return-void

    .line 351
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 357
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 363
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    .line 116
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 155
    return-void
.end method

.method private lockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 455
    return-void
.end method

.method private startPauseAnim()V
    .locals 4

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPauseAnim()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method private startRecAnim()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method

.method private stopPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    return-void
.end method

.method private stopRecAnim()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method private unlockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 464
    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 409
    sparse-switch p1, :sswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 411
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 414
    :sswitch_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->lockButtons()V

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    goto :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPause()V

    goto :goto_1

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStart()V

    goto :goto_1

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStop()V

    goto :goto_1

    .line 172
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doCancel()V

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f0a00f0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 261
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->IsShutterButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->ShutterButtonIsRestored()V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 284
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->restoreInitialState()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 471
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 489
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 476
    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 480
    goto :goto_0

    .line 483
    :cond_2
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_4

    :cond_3
    move v0, v1

    .line 486
    goto :goto_0

    .line 489
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 493
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    :goto_0
    move v0, v1

    .line 525
    :goto_1
    return v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 503
    goto :goto_1

    .line 506
    :cond_2
    if-ne p1, v3, :cond_5

    .line 507
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_4

    :cond_3
    move v0, v1

    .line 508
    goto :goto_1

    .line 511
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 512
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    move v0, v1

    .line 516
    goto :goto_1

    .line 519
    :cond_5
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-ne p1, v0, :cond_7

    :cond_6
    move v0, v1

    .line 522
    goto :goto_1

    :cond_7
    move v0, v2

    .line 525
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 313
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 317
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 292
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 304
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->enableButtons()V

    .line 305
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 307
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    goto :goto_0

    .line 295
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    return-void
.end method

.method public showRecordingMenu(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 468
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 235
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 238
    return-void
.end method

.method public stepSecond()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 251
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 5
    .parameter "bytes"

    .prologue
    const-wide/32 v3, 0xed800

    .line 320
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    if-eqz v1, :cond_0

    .line 321
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 322
    .local v0, progress:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->onClick(Landroid/view/View;)V

    .line 329
    .end local v0           #progress:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x400

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 2
    .parameter "second"

    .prologue
    .line 333
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 334
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method
