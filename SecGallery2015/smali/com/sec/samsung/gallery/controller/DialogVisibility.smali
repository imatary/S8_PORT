.class public final enum Lcom/sec/samsung/gallery/controller/DialogVisibility;
.super Ljava/lang/Enum;
.source "DialogVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/DialogVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/DialogVisibility;

.field public static final enum HIDE:Lcom/sec/samsung/gallery/controller/DialogVisibility;

.field public static final enum SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;

    const-string/jumbo v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/DialogVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    new-instance v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;

    const-string/jumbo v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/DialogVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;->HIDE:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/DialogVisibility;

    sget-object v1, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/DialogVisibility;->HIDE:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;->$VALUES:[Lcom/sec/samsung/gallery/controller/DialogVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/DialogVisibility;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/DialogVisibility;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/DialogVisibility;->$VALUES:[Lcom/sec/samsung/gallery/controller/DialogVisibility;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/DialogVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/DialogVisibility;

    return-object v0
.end method
