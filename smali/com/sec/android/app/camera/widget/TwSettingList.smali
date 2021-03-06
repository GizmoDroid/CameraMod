.class public Lcom/sec/android/app/camera/widget/TwSettingList;
.super Landroid/widget/RelativeLayout;
.source "TwSettingList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwSettingList"


# instance fields
.field public mButtonTextColor:I

.field public mButtonTextHighlightColor:I

.field private mContext:Landroid/content/Context;

.field protected mCurrentPage:I

.field public mHelpTextColor:I

.field private mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mItemWidthMargin:I

.field public mListItemNormalButtonHeight:I

.field public mListItemNormalButtonLeftMargin:I

.field public mListItemNormalButtonTopMargin:I

.field public mListItemNormalButtonWidth:I

.field public mListItemRadioButtonHeight:I

.field public mListItemRadioButtonLeftMargin:I

.field public mListItemRadioButtonTopMargin:I

.field public mListItemRadioButtonWidth:I

.field public mListItemTitleTextLeftMargin:I

.field public mListItemTitleTextRightMargin:I

.field public mListItemTitleTextTopMargin:I

.field mMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mMenuItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSettingListItem;",
            ">;"
        }
    .end annotation
.end field

.field mMenuItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/widget/TwSettingListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mNormalBackground:I

.field protected mOnInvalidatePreviewListener:Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

.field protected mPressedBackground:I

.field private mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

.field protected mRows:I

.field protected mScrollerX:I

.field protected mScrollerY:I

.field mSettingsMenuResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field public mTitleTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 99
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingList;->init(Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwSettingList:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, attr:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemWidth:I

    .line 113
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemHeight:I

    .line 117
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemWidthMargin:I

    .line 122
    const/4 v1, 0x4

    const v2, 0x7f0200bd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mNormalBackground:I

    .line 125
    const/4 v1, 0x5

    const v2, 0x7f0200be

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPressedBackground:I

    .line 129
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mScrollerX:I

    .line 133
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mScrollerY:I

    .line 138
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextLeftMargin:I

    .line 142
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextTopMargin:I

    .line 146
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextRightMargin:I

    .line 155
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonLeftMargin:I

    .line 159
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonTopMargin:I

    .line 164
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonLeftMargin:I

    .line 168
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonTopMargin:I

    .line 173
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonWidth:I

    .line 177
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonHeight:I

    .line 182
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonWidth:I

    .line 186
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonHeight:I

    .line 191
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mTitleTextColor:I

    .line 196
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    .line 201
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextHighlightColor:I

    .line 206
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextColor:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    return-void
.end method

.method private setPageText()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getPageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 2
    .parameter "menuId"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v0

    return-object v0
.end method

.method public getLastPage()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPageText()Ljava/lang/String;
    .locals 7

    .prologue
    .line 247
    const-string v0, "%d/%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeList(II)V
    .locals 7
    .parameter "id"
    .parameter "menuId"

    .prologue
    .line 224
    const-string v1, "TwSettingList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mSettingsMenuResource:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/TwSettingListItem;-><init>(Landroid/content/Context;ILjava/util/HashMap;Landroid/view/View$OnClickListener;Lcom/sec/android/app/camera/widget/TwSettingList;)V

    .line 228
    .local v0, cameraSettingsMenuItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setId(I)V

    .line 229
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setTag(Ljava/lang/Object;)V

    .line 231
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemHeight:I

    invoke-direct {v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 234
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getId()I

    move-result v1

    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    :cond_0
    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter "onClickListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSettingListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, settingsMenuResource:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SettingsMenuResourceBundle;>;"
    .local p3, menuItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/android/app/camera/widget/TwSettingListItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mSettingsMenuResource:Ljava/util/HashMap;

    .line 219
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 220
    iput-object p3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemMap:Ljava/util/Map;

    .line 221
    return-void
.end method

.method public initializeScroller()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 332
    .local v0, count:I
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    if-le v0, v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 335
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/TwScroller;

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 338
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 341
    .local v2, scrollParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mScrollerX:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 342
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mScrollerY:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 344
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/widget/TwScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    .end local v2           #scrollParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->refreshList()V

    .line 350
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setPageText()V

    .line 351
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 354
    const-string v0, "TwSettingList"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 366
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->pageUp()V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->pageDown()V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 297
    const-string v2, "TwSettingList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch Y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    move-object v1, v0

    .line 300
    .local v1, listItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V
    .locals 2
    .parameter "settingListItem"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mNormalBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->stopTicker()V

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPreviousSelectedItem:Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 313
    if-nez p1, :cond_2

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->clearText()V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mOnInvalidatePreviewListener:Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mOnInvalidatePreviewListener:Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;->onInvalidatePreview()V

    .line 323
    :cond_1
    return-void

    .line 316
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPressedBackground:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setBackgroundResource(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getHelpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->startTicker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pageDown()V
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getLastPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getPageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->refreshList()V

    .line 294
    return-void

    .line 290
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    goto :goto_0
.end method

.method public pageUp()V
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getLastPage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mPageScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->getPageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->refreshList()V

    .line 284
    return-void

    .line 280
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    goto :goto_0
.end method

.method public refreshList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 252
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/widget/TwSettingListItem;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 255
    .local v1, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setVisibility(I)V

    goto :goto_0

    .line 258
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    if-ge v0, v4, :cond_2

    .line 259
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mMenuItemsList:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mRows:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 262
    .restart local v1       #item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setVisibility(I)V

    .line 263
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v3, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemWidthMargin:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mItemHeight:I

    mul-int/2addr v5, v0

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    .end local v3           #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 270
    return-void
.end method

.method public scrollToFirstPage()V
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mCurrentPage:I

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->pageUp()V

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V
    .locals 1
    .parameter "helpTicker"

    .prologue
    .line 326
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextColor:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setTextColor(I)V

    .line 327
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mHelpTextTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 328
    return-void
.end method

.method public setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mOnInvalidatePreviewListener:Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;

    .line 384
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSettingList;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 388
    return-void
.end method
