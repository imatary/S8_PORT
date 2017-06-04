.class public final Lcom/amap/api/maps2d/MapsInitializer;
.super Ljava/lang/Object;
.source "MapsInitializer.java"


# static fields
.field private static a:Z

.field public static sdcardDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/maps2d/MapsInitializer;->a:Z

    return-void
.end method

.method public static getNetworkEnable()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps2d/MapsInitializer;->a:Z

    return v0
.end method
