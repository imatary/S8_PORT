.class Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;
.super Ljava/lang/Object;
.source "ImageEditCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ImageEditCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditPackageInfo"
.end annotation


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mAppName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;-><init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$200(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->getAppIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "com.sec.android.mimage.photoretouching"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$200(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02014b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
