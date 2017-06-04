.class final enum Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KenburnsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum PAN_DOWN_2_UP:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum PAN_LEFT_2_RIGHT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum PAN_RIGHT_2_LEFT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum PAN_UP_2_DOWN:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum ZOOM_IN_DEFAULT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

.field public static final enum ZOOM_OUT_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "PAN_UP_2_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_UP_2_DOWN:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "PAN_DOWN_2_UP"

    invoke-direct {v0, v1, v4}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_DOWN_2_UP:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "ZOOM_IN_FACE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "ZOOM_OUT_FACE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_OUT_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "PAN_LEFT_2_RIGHT"

    invoke-direct {v0, v1, v7}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_LEFT_2_RIGHT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "PAN_RIGHT_2_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_RIGHT_2_LEFT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    new-instance v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const-string/jumbo v1, "ZOOM_IN_DEFAULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_DEFAULT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_UP_2_DOWN:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_DOWN_2_UP:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_OUT_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_LEFT_2_RIGHT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_RIGHT_2_LEFT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_DEFAULT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->$VALUES:[Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;
    .locals 1

    const-class v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;
    .locals 1

    sget-object v0, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->$VALUES:[Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    invoke-virtual {v0}, [Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    return-object v0
.end method
