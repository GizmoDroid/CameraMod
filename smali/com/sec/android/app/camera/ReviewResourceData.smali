.class public Lcom/sec/android/app/camera/ReviewResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ReviewResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 26
    const v0, 0x7f07009f

    iput v0, p0, Lcom/sec/android/app/camera/ReviewResourceData;->mTextTitle:I

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void

    .line 28
    :array_0
    .array-data 0x4
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
