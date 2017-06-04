.class Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;
.super Ljava/lang/Object;
.source "GalleryMultiWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryMultiWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitMenuItem"
.end annotation


# instance fields
.field private ci:Landroid/content/pm/ComponentInfo;

.field private mCompName:Landroid/content/ComponentName;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mCompName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0427

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mLabel:Ljava/lang/String;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020251

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Landroid/content/pm/ComponentInfo;Landroid/content/pm/PackageManager;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mCompName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    invoke-virtual {v0, p3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    invoke-virtual {v0, p3}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mCompName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;)Landroid/content/pm/ComponentInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;

    return-object v0
.end method


# virtual methods
.method public getCompName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mCompName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method
