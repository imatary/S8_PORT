.class public final enum Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;
.super Ljava/lang/Enum;
.source "MediaScannerReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaScanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

.field public static final enum REGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

.field public static final enum UNREGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    const-string/jumbo v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->REGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    new-instance v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    const-string/jumbo v1, "UNREGISTER"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->UNREGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    sget-object v1, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->REGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->UNREGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->$VALUES:[Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->$VALUES:[Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    return-object v0
.end method
