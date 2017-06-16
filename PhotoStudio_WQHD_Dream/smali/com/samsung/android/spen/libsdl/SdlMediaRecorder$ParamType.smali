.class final enum Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;
.super Ljava/lang/Enum;
.source "SdlMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

.field public static final enum Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

.field public static final enum Long:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

.field public static final enum String:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

.field public static final enum Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const-string v1, "Void"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const-string v1, "Integer"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const-string v1, "String"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->String:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const-string v1, "Long"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Long:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->String:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Long:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->$VALUES:[Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;
    .locals 1

    const-class v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;
    .locals 1

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->$VALUES:[Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-virtual {v0}, [Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    return-object v0
.end method
