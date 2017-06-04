.class Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NearbyMediaSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private iconView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method
