.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioUriBatch"
.end annotation


# instance fields
.field private final mHttpProxyUri:Landroid/net/Uri;

.field private final mLocalUri:Landroid/net/Uri;

.field private final mSameAccessPointUri:Landroid/net/Uri;

.field private final mScsUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mHttpProxyUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mScsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mSameAccessPointUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mLocalUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getHttpProxyUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mHttpProxyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSameAccessPointUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mSameAccessPointUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getScsUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;->mScsUri:Landroid/net/Uri;

    return-object v0
.end method
