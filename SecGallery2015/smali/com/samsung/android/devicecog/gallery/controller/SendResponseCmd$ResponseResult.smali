.class public final enum Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;
.super Ljava/lang/Enum;
.source "SendResponseCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

.field public static final enum FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

.field public static final enum NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

.field public static final enum RULE_CANCEL:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

.field public static final enum SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v1, "RULE_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->RULE_CANCEL:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v1, "NLG_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->RULE_CANCEL:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->$VALUES:[Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->$VALUES:[Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    return-object v0
.end method
