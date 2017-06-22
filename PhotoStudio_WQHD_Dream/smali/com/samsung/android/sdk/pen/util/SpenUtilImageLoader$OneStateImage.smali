.class Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;
.super Ljava/lang/Object;
.source "SpenUtilImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneStateImage"
.end annotation


# instance fields
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

.field private mImagePathList:Ljava/util/ArrayList;
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

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;

    return-object p1
.end method
