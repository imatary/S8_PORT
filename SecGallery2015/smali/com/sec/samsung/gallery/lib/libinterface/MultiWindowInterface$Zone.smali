.class public final enum Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;
.super Ljava/lang/Enum;
.source "MultiWindowInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Zone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

.field public static final enum ZONE_A:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

.field public static final enum ZONE_B:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    const-string/jumbo v1, "ZONE_A"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->ZONE_A:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    new-instance v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    const-string/jumbo v1, "ZONE_B"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->ZONE_B:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    sget-object v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->ZONE_A:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->ZONE_B:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->$VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->$VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;

    return-object v0
.end method
