.class final enum Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;
.super Ljava/lang/Enum;
.source "ProfileModifyDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UPDATE_OPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

.field public static final enum CHANGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

.field public static final enum DELETE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

.field public static final enum UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;


# instance fields
.field code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    const-string/jumbo v1, "CHANGE_IMAGE"

    const-string/jumbo v2, "U"

    invoke-direct {v0, v1, v3, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->CHANGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    const-string/jumbo v1, "DELETE_IMAGE"

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v4, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->DELETE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    const-string/jumbo v1, "UNCHAGE_IMAGE"

    const-string/jumbo v2, "N"

    invoke-direct {v0, v1, v5, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->CHANGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->DELETE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->$VALUES:[Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->$VALUES:[Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->code:Ljava/lang/String;

    return-object v0
.end method
