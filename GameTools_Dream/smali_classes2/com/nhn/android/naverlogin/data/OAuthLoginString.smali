.class public final enum Lcom/nhn/android/naverlogin/data/OAuthLoginString;
.super Ljava/lang/Enum;
.source "OAuthLoginString.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nhn/android/naverlogin/data/OAuthLoginString;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_getting_token:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_group_id_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_install_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_cancel:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_confirm:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_install:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_naverapp_download_desc:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_naverapp_download_link:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_retry:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_msg_update:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_network_state_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_token_invalid:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

.field public static final enum naveroauthlogin_string_update_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;


# instance fields
.field mEnMsg:Ljava/lang/String;

.field mKoMsg:Ljava/lang/String;

.field mResourceCode:Ljava/lang/String;

.field mZhCnMsg:Ljava/lang/String;

.field mZhTwMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v1, "naveroauthlogin_string_token_invalid"

    const-string/jumbo v3, "naveroauthlogin_string_token_invalid"

    const-string/jumbo v4, "\uac04\ud3b8\ub85c\uadf8\uc778\uc774 \ud574\uc81c\ub418\uc5b4 \uc7ac\ub85c\uadf8\uc778\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    const-string/jumbo v5, "Quick Sign-in account has been expired."

    const-string/jumbo v6, "\u56e0\u89e3\u9664\u4fbf\u6377\u767b\u5f55\uff0c\u9700\u8981\u518d\u6b21\u767b\u5f55\u3002 "

    const-string/jumbo v7, "\u5feb\u901f\u767b\u5165\u5df2\u89e3\u9664\uff0c\u9808\u91cd\u65b0\u767b\u5165\u3002"

    invoke-direct/range {v0 .. v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_token_invalid:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_getting_token"

    const-string/jumbo v6, "naveroauthlogin_string_getting_token"

    const-string/jumbo v7, "\ub124\uc774\ubc84 \uc544\uc774\ub514\ub85c \ub85c\uadf8\uc778 \uc911\uc785\ub2c8\ub2e4."

    const-string/jumbo v8, "Sign in with NAVER"

    const-string/jumbo v9, "\u6b63\u5728\u4f7f\u7528NAVER ID\u767b\u5f55\u3002"

    const-string/jumbo v10, "\u6b63\u5728\u4f7f\u7528NAVER ID\u767b\u5165"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_getting_token:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_group_id_not_available"

    const-string/jumbo v6, "naveroauthlogin_string_group_id_not_available"

    const-string/jumbo v7, "\ub2e8\uccb4\uc544\uc774\ub514\ub294 \ub124\uc774\ubc84 \uc544\uc774\ub514\ub85c \ub85c\uadf8\uc778\uc774 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc544\uc774\ub514\ub85c \ub85c\uadf8\uc778 \ud574 \uc8fc\uc138\uc694."

    const-string/jumbo v8, "Group ID can\'t be used to \'Sign in with NAVER\'. Please sign in as a normal account."

    const-string/jumbo v9, "\u7fa4\u7ec4ID\u4e0d\u652f\u6301NAVER ID\u767b\u5f55\u3002\u8bf7\u4f7f\u7528\u4e2a\u4ebaID\u767b\u5f55\u3002 "

    const-string/jumbo v10, "\u7fa4\u7d44\u5e33\u865f\u4e0d\u652f\u6301NAVER ID\u767b\u5165\uff0c\u8acb\u4f7f\u7528\u500b\u4eba\u5e33\u865f\u767b\u5165\u3002"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_group_id_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_install_naverapp"

    const-string/jumbo v6, "naveroauthlogin_string_install_naverapp"

    const-string/jumbo v7, "\ub124\uc774\ubc84 \uc571\uc744 \uc124\uce58\ud558\uba74\n\uc774\uc6a9\ud560 \uc218 \uc788\ub294 \uc11c\ube44\uc2a4\uc785\ub2c8\ub2e4."

    const-string/jumbo v8, "Please install Naver app to use this service."

    const-string/jumbo v9, "\u5b89\u88c5NAVER\u8f6f\u4ef6\u540e\uff0c\n\u624d\u53ef\u4ee5\u4f7f\u7528\u6b64\u670d\u52a1\u3002"

    const-string/jumbo v10, "\u5b89\u88ddNAVER App\n\u5373\u53ef\u4f7f\u7528\u3002"

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_install_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_update_naverapp"

    const-string/jumbo v6, "naveroauthlogin_string_update_naverapp"

    const-string/jumbo v7, "\ub124\uc774\ubc84 \uc571 \uc5c5\ub370\uc774\ud2b8 \ud6c4\n\uc774\uc6a9\ud560 \uc218 \uc788\ub294 \uc11c\ube44\uc2a4\uc785\ub2c8\ub2e4."

    const-string/jumbo v8, "Please update your Naver app to use this service."

    const-string/jumbo v9, "\u66f4\u65b0NAVER\u8f6f\u4ef6\u540e\uff0c\n\u624d\u53ef\u4ee5\u4f7f\u7528\u6b64\u670d\u52a1\u3002"

    const-string/jumbo v10, "\u66f4\u65b0NAVER App\n\u5373\u53ef\u4f7f\u7528\u3002"

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_update_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_network_state_not_available"

    const/4 v5, 0x5

    const-string/jumbo v6, "naveroauthlogin_string_network_state_not_available"

    const-string/jumbo v7, "\ub124\ud2b8\uc6cc\ud06c\uc5d0 \uc811\uc18d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc0c1\ud0dc\ub97c \ud655\uc778\ud574 \uc8fc\uc138\uc694."

    const-string/jumbo v8, "Network is not available. Please check your network connection and try again."

    const-string/jumbo v9, "\u7f51\u7edc\u6709\u95ee\u9898\uff0c\u65e0\u6cd5\u767b\u5f55\u3002\n\u60a8\u8981\u518d\u8bd5\u5417\uff1f"

    const-string/jumbo v10, "\u7db2\u7d61\u6709\u554f\u984c\uff0c\u7121\u6cd5\u767b\u5165\u3002\n\u60a8\u8981\u518d\u8a66\u55ce\uff1f"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_network_state_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_update"

    const/4 v5, 0x6

    const-string/jumbo v6, "naveroauthlogin_string_msg_update"

    const-string/jumbo v7, "\uc5c5\ub370\uc774\ud2b8"

    const-string/jumbo v8, "Update"

    const-string/jumbo v9, "\u66f4\u65b0 "

    const-string/jumbo v10, "\u66f4\u65b0"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_update:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_install"

    const/4 v5, 0x7

    const-string/jumbo v6, "naveroauthlogin_string_msg_install"

    const-string/jumbo v7, "\uc124\uce58"

    const-string/jumbo v8, "Install"

    const-string/jumbo v9, "\u5b89\u88c5 "

    const-string/jumbo v10, "\u5b89\u88dd"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_install:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_cancel"

    const/16 v5, 0x8

    const-string/jumbo v6, "naveroauthlogin_string_msg_cancel"

    const-string/jumbo v7, "\ucde8\uc18c"

    const-string/jumbo v8, "Cancel"

    const-string/jumbo v9, "\u53d6\u6d88"

    const-string/jumbo v10, "\u53d6\u6d88"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_cancel:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_retry"

    const/16 v5, 0x9

    const-string/jumbo v6, "naveroauthlogin_string_retry"

    const-string/jumbo v7, "\uc7ac\uc2dc\ub3c4"

    const-string/jumbo v8, "Retry"

    const-string/jumbo v9, "\u518d\u8bd5"

    const-string/jumbo v10, "\u518d\u8a66"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_retry:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_confirm"

    const/16 v5, 0xa

    const-string/jumbo v6, "naveroauthlogin_string_confirm"

    const-string/jumbo v7, "\ud655\uc778"

    const-string/jumbo v8, "OK"

    const-string/jumbo v9, "\u786e\u5b9a"

    const-string/jumbo v10, "\u78ba\u5b9a"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_confirm:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_naverapp_download_desc"

    const/16 v5, 0xb

    const-string/jumbo v6, "naveroauthlogin_string_msg_naverapp_download_desc"

    const-string/jumbo v7, "\ub124\uc774\ubc84 \uc571\uc73c\ub85c \ub354\uc6b1 \uac04\ud3b8\ud558\uac8c \ub85c\uadf8\uc778!"

    const-string/jumbo v8, "Get NAVER App and sign in faster"

    const-string/jumbo v9, "\u901a\u8fc7NAVER App \u4fbf\u6377\u767b\u5f55"

    const-string/jumbo v10, "\u901a\u904eNAVER App \u4fbf\u6377\u767b\u9304"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_desc:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const-string/jumbo v4, "naveroauthlogin_string_msg_naverapp_download_link"

    const/16 v5, 0xc

    const-string/jumbo v6, "naveroauthlogin_string_msg_naverapp_download_link"

    const-string/jumbo v7, "\uc571 \ub2e4\uc6b4\ub85c\ub4dc"

    const-string/jumbo v8, "Download App"

    const-string/jumbo v9, "\u4e0b\u8f7dAPP"

    const-string/jumbo v10, "\u4e0b\u8f09APP"

    invoke-direct/range {v3 .. v10}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_link:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_token_invalid:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_getting_token:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_group_id_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v1, v0, v12

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_install_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v1, v0, v13

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_update_naverapp:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_network_state_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_update:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_install:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_cancel:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_retry:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_confirm:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_desc:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_link:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mResourceCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mKoMsg:Ljava/lang/String;

    iput-object p5, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mEnMsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mZhCnMsg:Ljava/lang/String;

    iput-object p7, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mZhTwMsg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthLoginString;
    .locals 1

    const-class v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    return-object v0
.end method

.method public static values()[Lcom/nhn/android/naverlogin/data/OAuthLoginString;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    array-length v1, v0

    new-array v2, v1, [Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".R$string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    aget-object v0, v4, v3

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mResourceCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getStringInLib(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getStringInLib(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->isKorean(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mKoMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mKoMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "zh"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "TW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mZhTwMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mZhCnMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->mEnMsg:Ljava/lang/String;

    goto :goto_0
.end method
