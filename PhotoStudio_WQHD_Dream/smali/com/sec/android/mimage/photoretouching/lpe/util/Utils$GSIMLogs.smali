.class public Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSIMLogs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;
    }
.end annotation


# static fields
.field public static final FEATURE_ADD_IMAGE_C800:Ljava/lang/String; = "C800"

.field public static final FEATURE_AGIF_ADD_IMAGE_A200:Ljava/lang/String; = "A200"

.field public static final FEATURE_AGIF_DIRECTION_A150:Ljava/lang/String; = "A150"

.field public static final FEATURE_AGIF_EDIT_A110:Ljava/lang/String; = "A110"

.field public static final FEATURE_AGIF_MENU_A100:Ljava/lang/String; = "A100"

.field public static final FEATURE_AGIF_RATIO_A120:Ljava/lang/String; = "A120"

.field public static final FEATURE_AGIF_SAVE_IMAGE_A140:Ljava/lang/String; = "A140"

.field public static final FEATURE_AGIF_SPEED_A130:Ljava/lang/String; = "A130"

.field public static final FEATURE_ASPECT_RATIO_C100:Ljava/lang/String; = "C100"

.field public static final FEATURE_BACKGROUND_C400:Ljava/lang/String; = "C400"

.field public static final FEATURE_BORDER_C300:Ljava/lang/String; = "C300"

.field public static final FEATURE_EDIT_POPUP_C500:Ljava/lang/String; = "C500"

.field public static final FEATURE_LAYOUT_C200:Ljava/lang/String; = "C200"

.field public static final FEATURE_NUMBER_OF_IMAGE_AT_LAUNCH_C700:Ljava/lang/String; = "C700"

.field public static final FEATURE_SHUFFLE_C600:Ljava/lang/String; = "C600"

.field public static final FEATURE_SWAP_IMAGE_C900:Ljava/lang/String; = "C900"

.field private static instanceGSIMLogs:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;


# instance fields
.field public EXTRA_AGIF_DIRECTION:[Ljava/lang/String;

.field public EXTRA_AGIF_EDIT:[Ljava/lang/String;

.field public EXTRA_AGIF_MENU:[Ljava/lang/String;

.field public EXTRA_AGIF_RATIO:[Ljava/lang/String;

.field public EXTRA_AGIF_SPEED:[Ljava/lang/String;

.field public EXTRA_ASPECT_RATIO:[Ljava/lang/String;

.field public EXTRA_BACKGROUND:[Ljava/lang/String;

.field public EXTRA_BORDER:[Ljava/lang/String;

.field public EXTRA_EDIT_POPUP_ADJUSTMENT:Ljava/lang/String;

.field public EXTRA_EDIT_POPUP_EFFECT:Ljava/lang/String;

.field public EXTRA_EDIT_POPUP_REMOVE:Ljava/lang/String;

.field public EXTRA_EDIT_POPUP_REPLACE:Ljava/lang/String;

.field public EXTRA_LAYOUT:[[Ljava/lang/String;

.field public EXTRA_SHUFFLE:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gsimlogsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private isMarginDone:Z

.field private isRoundnessDone:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "1_1"

    aput-object v1, v0, v5

    const-string v1, "1_16"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_ASPECT_RATIO:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "Layout_2_1"

    aput-object v2, v1, v6

    const-string v2, "Layout_2_2"

    aput-object v2, v1, v7

    const-string v2, "Layout_2_3"

    aput-object v2, v1, v8

    const-string v2, "Layout_2_4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Layout_2_5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Layout_2_6"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "Layout_3_1"

    aput-object v2, v1, v6

    const-string v2, "Layout_3_2"

    aput-object v2, v1, v7

    const-string v2, "Layout_3_3"

    aput-object v2, v1, v8

    const-string v2, "Layout_3_4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Layout_3_5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Layout_3_6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Layout_3_7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Layout_3_8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Layout_3_9"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Layout_3_10"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "Layout_4_1"

    aput-object v2, v1, v6

    const-string v2, "Layout_4_2"

    aput-object v2, v1, v7

    const-string v2, "Layout_4_3"

    aput-object v2, v1, v8

    const-string v2, "Layout_4_4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Layout_4_5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Layout_4_6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Layout_4_7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Layout_4_8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Layout_4_9"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Layout_4_10"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Layout_4_11"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "Layout_5_1"

    aput-object v3, v2, v6

    const-string v3, "Layout_5_2"

    aput-object v3, v2, v7

    const-string v3, "Layout_5_3"

    aput-object v3, v2, v8

    const-string v3, "Layout_5_4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Layout_5_5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Layout_5_6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Layout_5_7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Layout_5_8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Layout_5_9"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Layout_5_10"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Layout_5_11"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "Layout_6_1"

    aput-object v3, v2, v6

    const-string v3, "Layout_6_2"

    aput-object v3, v2, v7

    const-string v3, "Layout_6_3"

    aput-object v3, v2, v8

    const-string v3, "Layout_6_4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Layout_6_5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Layout_6_6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Layout_6_7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Layout_6_8"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_LAYOUT:[[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Margin"

    aput-object v1, v0, v5

    const-string v1, "Roundness"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Color"

    aput-object v1, v0, v5

    const-string v1, "BG1"

    aput-object v1, v0, v6

    const-string v1, "BG2"

    aput-object v1, v0, v7

    const-string v1, "BG3"

    aput-object v1, v0, v8

    const-string v1, "BG4"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "BG5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BG6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BG7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BG8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BG9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BG10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BG11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BG12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BG13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BG14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BG15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BG16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BG17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BG18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BG19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BG20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BG21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BG22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BG23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "BG24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "BG25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "BG26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BG27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "BG28"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BACKGROUND:[Ljava/lang/String;

    const-string v0, "Replace"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_REPLACE:Ljava/lang/String;

    const-string v0, "Remove"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_REMOVE:Ljava/lang/String;

    const-string v0, "Effect"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_EFFECT:Ljava/lang/String;

    const-string v0, "Adjustment"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_ADJUSTMENT:Ljava/lang/String;

    const-string v0, "Shuffle"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_SHUFFLE:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v5

    const-string v1, "11"

    aput-object v1, v0, v6

    const-string v1, "43"

    aput-object v1, v0, v7

    const-string v1, "169"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_RATIO:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "x1"

    aput-object v1, v0, v5

    const-string v1, "x2"

    aput-object v1, v0, v6

    const-string v1, "x3"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_SPEED:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "Add"

    aput-object v1, v0, v5

    const-string v1, "Remove"

    aput-object v1, v0, v6

    const-string v1, "Reorder"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_EDIT:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Edit"

    aput-object v1, v0, v5

    const-string v1, "Ratio"

    aput-object v1, v0, v6

    const-string v1, "Speed"

    aput-object v1, v0, v7

    const-string v1, "Direction"

    aput-object v1, v0, v8

    const-string v1, "Decoration"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_MENU:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "Backward"

    aput-object v1, v0, v5

    const-string v1, "Forward"

    aput-object v1, v0, v6

    const-string v1, "Loop"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_DIRECTION:[Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isMarginDone:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isRoundnessDone:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    return-void
.end method

.method private bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->feature:Ljava/lang/String;

    const-string v1, "C300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->feature:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private flushGSIMLogs()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    new-array v0, v3, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v5, "C100"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v1, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    const-string v5, "C100"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v6, "C100"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v5, "C200"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    const-string v5, "C200"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v6, "C200"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v1, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    const-string v5, "C300"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v1, v3, :cond_4

    add-int/lit8 v2, v1, 0x1

    const-string v5, "C300"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v5, "C400"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ge v1, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    const-string v5, "C400"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    const-string v6, "C400"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->broadcastGsimLogs(Landroid/content/Context;[Landroid/content/ContentValues;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isRoundnessDone:Z

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isMarginDone:Z

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    .locals 2

    const-class v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->instanceGSIMLogs:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->instanceGSIMLogs:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->instanceGSIMLogs:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public flushAgifGSIMLogsOnSave()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;->extra:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->bundleData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->broadcastGsimLogs(Landroid/content/Context;[Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public insertAgifDirectionInGSIMLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "A150"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_DIRECTION:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertAgifEditInGSIMLog(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "A110"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_EDIT:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertAgifMenuInGSIMLog(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "A100"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_MENU:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertAgifRatioInGSIMLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "A120"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_RATIO:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertAgifSavedImagesInGSIMLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "A140"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertAgifSpeedInGSIMLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "A130"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_AGIF_SPEED:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertAspectRatioGsimLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "C100"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_ASPECT_RATIO:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertBackgroundGsimLog(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "C400"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BACKGROUND:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    return-void
.end method

.method public insertBorderGsimLog(I)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isMarginDone:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isRoundnessDone:Z

    if-eqz v1, :cond_2

    if-eq p1, v2, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isMarginDone:Z

    :goto_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "C300"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_BORDER:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->isRoundnessDone:Z

    goto :goto_1
.end method

.method public insertLayoutGsimLog(II)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_LAYOUT:[[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_LAYOUT:[[Ljava/lang/String;

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;

    const-string v1, "C200"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_LAYOUT:[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->cacheGSIMLogs(Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs$GSIMDataModel;)V

    :cond_0
    return-void
.end method

.method public insertNumberOfImagesAddedGsimLog(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C800"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertNumberOfImagesLaunchedGsimLog(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C700"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertPopUpAdjustmentGsimLog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C500"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_ADJUSTMENT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertPopUpEffectGsimLog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C500"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_EFFECT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertPopUpRemoveGsimLog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C500"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_REMOVE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertPopUpReplaceGsimLog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C500"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_EDIT_POPUP_REPLACE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertShuffleGsimLog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C600"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->EXTRA_SHUFFLE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertSwapGsimLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    const-string v1, "C900"

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public logInGsimLogs()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->flushGSIMLogs()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->gsimlogsCache:Ljava/util/Map;

    :cond_0
    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->instanceGSIMLogs:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->context:Landroid/content/Context;

    return-void
.end method
