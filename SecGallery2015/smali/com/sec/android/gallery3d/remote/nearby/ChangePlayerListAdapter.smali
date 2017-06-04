.class public Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChangePlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;,
        Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ChangePlayerListAdapter"

.field public static final sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataChangedHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->initDataChangedHandler()V

    return-void
.end method

.method private initDataChangedHandler()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$1;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->mDataChangedHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public clearIconCache()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040038

    const/4 v9, 0x0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$1;)V

    const v9, 0x7f120099

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const v9, 0x7f12009b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const v9, 0x7f12009a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerName:Landroid/widget/TextView;

    const v9, 0x7f120098

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckedTextView;

    iput-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerCheck:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDeviceType()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    const v7, 0x7f020231

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10005a

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "device_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_1
    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerName:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerCheck:Landroid/widget/CheckedTextView;

    if-nez p1, :cond_9

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getIsCurrentPlayDevice()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const v10, 0x7f0a0119

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f100059

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    move-object v9, p2

    :goto_3
    return-object v9

    :catch_0
    move-exception v4

    const-string/jumbo v9, "ChangePlayerListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "InflateException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/view/InflateException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerName:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerCheck:Landroid/widget/CheckedTextView;

    if-nez v9, :cond_0

    :cond_4
    const-string/jumbo v9, "ChangePlayerListAdapter"

    const-string/jumbo v10, "ViewHolder has null value!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getIconUri()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_6

    const/4 v8, 0x0

    :goto_4
    sget-object v9, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f02026c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10005a

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getIconUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;-><init>(Landroid/net/Uri;)V

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/os/Handler;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->mDataChangedHandler:Landroid/os/Handler;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_5
    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const v10, 0x7f0a04ba

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getIconUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_7
    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    iget-object v10, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDevice()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    invoke-interface {v9}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->getWfdIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const v10, 0x7f0a04bb

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mPlayerName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1000c0

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
