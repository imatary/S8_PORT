.class final enum Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;
.super Ljava/lang/Enum;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LgtGroupCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum CONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum CREATED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum INVITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum INVITING_FAIL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum JOIN:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum LEFT:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

.field public static final enum NONE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->CREATED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "INVITING"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "INVITING_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING_FAIL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->LEFT:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "JOIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->JOIN:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const-string/jumbo v1, "CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->CONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->CREATED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING_FAIL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->LEFT:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->JOIN:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->CONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->$VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;
    .locals 1

    const-class v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->$VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    return-object v0
.end method
