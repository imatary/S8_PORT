.class public Lcom/sec/samsung/gallery/lib/se/SeConnectivityManager;
.super Ljava/lang/Object;
.source "SeConnectivityManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/ConnectivityManagerInterface;


# static fields
.field public static final TYPE_WIFI_P2P:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkSupported(Landroid/content/Context;I)Z
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->semIsNetworkSupported(I)Z

    move-result v1

    return v1
.end method
