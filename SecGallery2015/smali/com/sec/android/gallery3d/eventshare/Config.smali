.class public Lcom/sec/android/gallery3d/eventshare/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "v6t16ikdtt"

.field public static final APP_SECRET:Ljava/lang/String; = "WZ3RJPXE1UYKQ5AS8NNIIB0641MC8DMQ"

.field public static final CID:Ljava/lang/String; = "QpA9zn84yZ"

.field public static final GCM_ID:Ljava/lang/String; = "905651381814"

.field public static final SERVICE_ID:Ljava/lang/Integer;

.field public static final SPP_ID:Ljava/lang/String; = "a681b96d184ec2d0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/Config;->SERVICE_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
