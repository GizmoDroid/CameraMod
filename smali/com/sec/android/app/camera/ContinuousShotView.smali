.class public Lcom/sec/android/app/camera/ContinuousShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ContinuousShotView.java"


# static fields
.field public static final CONTINUOUS_MAX_IMAGE_COUNT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ContinuousShotView"


# instance fields
.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mCaptureProgressText:Landroid/widget/TextView;

.field private mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "order"

    .prologue
    const/4 v8, 0x1

    .line 51
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 53
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ContinuousShotView;->setCaptureEnabled(Z)V

    .line 54
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 81
    return-void
.end method


# virtual methods
.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 117
    return-void
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->doTerminateContinuous()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 152
    goto :goto_0

    :cond_3
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 165
    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 170
    goto :goto_0

    :cond_3
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->doTerminateContinuous()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->showCaptureLayout()V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->hidePostCaptureLayout()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetContinuousShot()V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 199
    return-void
.end method

.method public resetCapture()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    const-string v1, "0/9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 95
    return-void
.end method

.method public setCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 107
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    return-void
.end method

.method public setProgressText(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    return-void
.end method
