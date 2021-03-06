.class Lcom/sec/android/app/camera/BitmapCache;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/BitmapCache$Entry;
    }
.end annotation


# instance fields
.field private final mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    new-array v1, p1, [Lcom/sec/android/app/camera/BitmapCache$Entry;

    iput-object v1, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    .line 1217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    new-instance v2, Lcom/sec/android/app/camera/BitmapCache$Entry;

    invoke-direct {v2}, Lcom/sec/android/app/camera/BitmapCache$Entry;-><init>()V

    aput-object v2, v1, v0

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    :cond_0
    return-void
.end method

.method private findEntry(I)Lcom/sec/android/app/camera/BitmapCache$Entry;
    .locals 5
    .parameter "pos"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    .local v0, arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1226
    .local v1, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    iget v4, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    if-ne p1, v4, :cond_0

    move-object v4, v1

    .line 1230
    .end local v1           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :goto_1
    return-object v4

    .line 1225
    .restart local v1       #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    .end local v1           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 1284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    .local v0, arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1285
    .local v1, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    iget-object v4, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1286
    iget-object v4, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1288
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/BitmapCache$Entry;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1290
    .end local v1           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 1284
    .end local v0           #arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pos"

    .prologue
    .line 1235
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapCache;->findEntry(I)Lcom/sec/android/app/camera/BitmapCache$Entry;

    move-result-object v0

    .line 1236
    .local v0, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    if-eqz v0, :cond_0

    .line 1237
    iget-object v1, v0, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1235
    .end local v0           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasBitmap(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 1294
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapCache;->findEntry(I)Lcom/sec/android/app/camera/BitmapCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1295
    .local v0, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1294
    .end local v0           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(ILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "pos"
    .parameter "bitmap"

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapCache;->findEntry(I)Lcom/sec/android/app/camera/BitmapCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1280
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1252
    :cond_1
    const/4 v1, 0x0

    .line 1253
    .local v1, best:Lcom/sec/android/app/camera/BitmapCache$Entry;
    const/4 v6, -0x1

    .line 1254
    .local v6, maxDist:I
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    .local v0, arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 1255
    .local v3, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    iget v7, v3, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 1256
    move-object v1, v3

    .line 1270
    .end local v3           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_2
    if-eqz v1, :cond_0

    .line 1274
    iget-object v7, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 1275
    iget-object v7, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1278
    :cond_3
    iput p1, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    .line 1279
    iput-object p2, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1244
    .end local v0           #arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    .end local v1           #best:Lcom/sec/android/app/camera/BitmapCache$Entry;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #maxDist:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1259
    .restart local v0       #arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    .restart local v1       #best:Lcom/sec/android/app/camera/BitmapCache$Entry;
    .restart local v3       #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #maxDist:I
    :cond_4
    :try_start_2
    iget v7, v3, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1260
    .local v2, dist:I
    if-le v2, v6, :cond_5

    .line 1261
    move v6, v2

    .line 1262
    move-object v1, v3

    .line 1254
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public declared-synchronized recycle(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 1301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/BitmapCache;->mCache:[Lcom/sec/android/app/camera/BitmapCache$Entry;

    .local v0, arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1302
    .local v1, e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    iget v4, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1303
    iget-object v4, v1, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_0

    .line 1309
    .end local v1           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :goto_1
    monitor-exit p0

    return-void

    .line 1301
    .restart local v1       #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1308
    .end local v1           #e:Lcom/sec/android/app/camera/BitmapCache$Entry;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1301
    .end local v0           #arr$:[Lcom/sec/android/app/camera/BitmapCache$Entry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
