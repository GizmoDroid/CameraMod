.class public Lcom/sec/android/app/camera/FocusModeContinuousMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FocusModeContinuousMenu.java"


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

.field mSelectedFocusMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/FocusModeContinuousResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 42
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->init(Lcom/sec/android/app/camera/FocusModeContinuousResourceData;)V

    .line 43
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/FocusModeContinuousResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->clear()V

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 57
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 58
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 88
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;->onFocusModeChanged(I)V

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 80
    return-void
.end method

.method public setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    .line 73
    return-void
.end method
