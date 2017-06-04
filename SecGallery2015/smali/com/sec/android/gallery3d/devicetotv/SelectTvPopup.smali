.class Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;
.super Ljava/lang/Object;
.source "SelectTvPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$SelectTvAdapter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceToTVUtil:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mTvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mDeviceToTVUtil:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mDeviceToTVUtil:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createSelectTvPopup()V
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$SelectTvAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$SelectTvAdapter;-><init>(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;-><init>(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public setTvList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/library/beaconmanager/Tv;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "SelectTvPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " th tv is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
