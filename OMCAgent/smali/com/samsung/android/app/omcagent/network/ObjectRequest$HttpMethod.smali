.class public final enum Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "ObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/network/ObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

.field public static final enum DELETE:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

.field public static final enum GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

.field public static final enum POST:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

.field public static final enum PUT:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->POST:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->PUT:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->DELETE:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->POST:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->PUT:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->DELETE:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->$VALUES:[Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->$VALUES:[Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    return-object v0
.end method
