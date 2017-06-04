.class public Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;
.super Ljava/lang/Object;
.source "ConnectivityManagerFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final TYPE_WIFI_P2P:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    sput v0, Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;->TYPE_WIFI_P2P:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeConnectivityManager;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/se/SeConnectivityManager;-><init>()V

    return-object v0
.end method
