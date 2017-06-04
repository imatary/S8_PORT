.class final enum Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
.super Ljava/lang/Enum;
.source "SLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/slink/SLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

.field public static final enum ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

.field public static final enum DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

.field public static final enum ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const-string/jumbo v1, "ACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const-string/jumbo v1, "DEACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->$VALUES:[Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->$VALUES:[Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    return-object v0
.end method
