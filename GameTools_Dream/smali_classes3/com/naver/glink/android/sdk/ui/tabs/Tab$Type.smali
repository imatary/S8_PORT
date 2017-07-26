.class public final enum Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
.super Ljava/lang/Enum;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum ALL_ARTICLES:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum NONE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum PHOTOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public static final enum VIDEOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;


# instance fields
.field public final fragmentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "NOTICE"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "EVENT"

    invoke-direct {v0, v1, v5}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v6}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "PROFILE"

    invoke-direct {v0, v1, v7}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "ALL_ARTICLES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ALL_ARTICLES:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "PHOTOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PHOTOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "VIDEOS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->VIDEOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const-string/jumbo v1, "NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NONE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ALL_ARTICLES:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PHOTOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->VIDEOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NONE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->$VALUES:[Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->$VALUES:[Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-object v0
.end method
