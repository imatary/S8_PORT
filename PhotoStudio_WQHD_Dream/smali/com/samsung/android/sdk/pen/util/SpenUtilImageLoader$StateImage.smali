.class Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;
.super Ljava/lang/Object;
.source "SpenUtilImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateImage"
.end annotation


# instance fields
.field private mFocusPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPressPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;

    return-object p1
.end method
