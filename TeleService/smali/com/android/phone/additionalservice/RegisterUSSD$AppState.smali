.class final enum Lcom/android/phone/additionalservice/RegisterUSSD$AppState;
.super Ljava/lang/Enum;
.source "RegisterUSSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/additionalservice/RegisterUSSD$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

.field public static final enum DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

.field public static final enum DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

.field public static final enum LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

.field public static final enum LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    const-string/jumbo v1, "LIST_EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    const-string/jumbo v1, "LIST_SHOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    const-string/jumbo v1, "DELETE_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    const-string/jumbo v1, "DIALOG_OPEN"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->$VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;
    .locals 1

    const-class v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/additionalservice/RegisterUSSD$AppState;
    .locals 1

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->$VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-object v0
.end method
