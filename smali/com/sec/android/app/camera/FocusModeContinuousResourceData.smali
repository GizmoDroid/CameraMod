.class public Lcom/sec/android/app/camera/FocusModeContinuousResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "FocusModeContinuousResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 25
    const v0, 0x7f070097

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousResourceData;->mTextTitle:I

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x54t 0x2t 0x2t 0x7ft
        0x55t 0x2t 0x2t 0x7ft
        0x54t 0x2t 0x2t 0x7ft
        0x50t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0x5at 0x2t 0x2t 0x7ft
        0x5bt 0x2t 0x2t 0x7ft
        0x5at 0x2t 0x2t 0x7ft
        0x51t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
