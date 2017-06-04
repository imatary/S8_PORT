.class public final Lcom/google/android/gms/internal/fv;
.super Lcom/google/android/gms/internal/dw;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fv$h;,
        Lcom/google/android/gms/internal/fv$g;,
        Lcom/google/android/gms/internal/fv$f;,
        Lcom/google/android/gms/internal/fv$d;,
        Lcom/google/android/gms/internal/fv$c;,
        Lcom/google/android/gms/internal/fv$b;,
        Lcom/google/android/gms/internal/fv$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fw;

.field private static final rH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dw$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private dI:I

.field private hN:Ljava/lang/String;

.field private final iM:I

.field private ml:Ljava/lang/String;

.field private final rI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sJ:Ljava/lang/String;

.field private sK:Lcom/google/android/gms/internal/fv$a;

.field private sL:Ljava/lang/String;

.field private sM:Ljava/lang/String;

.field private sN:I

.field private sO:Lcom/google/android/gms/internal/fv$b;

.field private sP:Ljava/lang/String;

.field private sQ:Lcom/google/android/gms/internal/fv$c;

.field private sR:Z

.field private sS:Ljava/lang/String;

.field private sT:Lcom/google/android/gms/internal/fv$d;

.field private sU:Ljava/lang/String;

.field private sV:I

.field private sW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$f;",
            ">;"
        }
    .end annotation
.end field

.field private sX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$g;",
            ">;"
        }
    .end annotation
.end field

.field private sY:I

.field private sZ:I

.field private sm:Ljava/lang/String;

.field private ta:Ljava/lang/String;

.field private tb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$h;",
            ">;"
        }
    .end annotation
.end field

.field private tc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fv;->CREATOR:Lcom/google/android/gms/internal/fw;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "aboutMe"

    const-string/jumbo v2, "aboutMe"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "ageRange"

    const-string/jumbo v2, "ageRange"

    const-class v3, Lcom/google/android/gms/internal/fv$a;

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "birthday"

    const-string/jumbo v2, "birthday"

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "braggingRights"

    const-string/jumbo v2, "braggingRights"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "circledByCount"

    const-string/jumbo v2, "circledByCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "cover"

    const-string/jumbo v2, "cover"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/internal/fv$b;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "currentLocation"

    const-string/jumbo v2, "currentLocation"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "displayName"

    const-string/jumbo v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "gender"

    const-string/jumbo v2, "gender"

    const/16 v3, 0xc

    new-instance v4, Lcom/google/android/gms/internal/dt;

    invoke-direct {v4}, Lcom/google/android/gms/internal/dt;-><init>()V

    const-string/jumbo v5, "male"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "female"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "other"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/dw$b;Z)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "id"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    const-string/jumbo v2, "image"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/fv$c;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "isPlusUser"

    const-string/jumbo v2, "isPlusUser"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "language"

    const-string/jumbo v2, "language"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/fv$d;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "nickname"

    const-string/jumbo v2, "nickname"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "objectType"

    const-string/jumbo v2, "objectType"

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/gms/internal/dt;

    invoke-direct {v4}, Lcom/google/android/gms/internal/dt;-><init>()V

    const-string/jumbo v5, "person"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "page"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/dw$b;Z)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "organizations"

    const-string/jumbo v2, "organizations"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/internal/fv$f;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "placesLived"

    const-string/jumbo v2, "placesLived"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/internal/fv$g;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "plusOneCount"

    const-string/jumbo v2, "plusOneCount"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "relationshipStatus"

    const-string/jumbo v2, "relationshipStatus"

    const/16 v3, 0x19

    new-instance v4, Lcom/google/android/gms/internal/dt;

    invoke-direct {v4}, Lcom/google/android/gms/internal/dt;-><init>()V

    const-string/jumbo v5, "single"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "in_a_relationship"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "engaged"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "married"

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "its_complicated"

    invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "open_relationship"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "widowed"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "in_domestic_partnership"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    const-string/jumbo v5, "in_civil_union"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/dt;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/dt;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/dw$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/dw$b;Z)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "tagline"

    const-string/jumbo v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "urls"

    const-string/jumbo v2, "urls"

    const/16 v3, 0x1c

    const-class v4, Lcom/google/android/gms/internal/fv$h;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/dw$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    const-string/jumbo v1, "verified"

    const-string/jumbo v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dw$a;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dw;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/fv;->iM:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->rI:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/fv$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/fv$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/fv$c;ZLjava/lang/String;Lcom/google/android/gms/internal/fv$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fv$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/fv$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fv$c;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fv$d;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$g;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$h;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fv;->rI:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/fv;->iM:I

    iput-object p3, p0, Lcom/google/android/gms/internal/fv;->sJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fv;->sK:Lcom/google/android/gms/internal/fv$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/fv;->sL:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fv;->sM:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/fv;->sN:I

    iput-object p8, p0, Lcom/google/android/gms/internal/fv;->sO:Lcom/google/android/gms/internal/fv$b;

    iput-object p9, p0, Lcom/google/android/gms/internal/fv;->sP:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/fv;->ml:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/fv;->dI:I

    iput-object p12, p0, Lcom/google/android/gms/internal/fv;->sm:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/internal/fv;->sQ:Lcom/google/android/gms/internal/fv$c;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/fv;->sR:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->sS:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->sT:Lcom/google/android/gms/internal/fv$d;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->sU:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/fv;->sV:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->sW:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->sX:Ljava/util/List;

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/internal/fv;->sY:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/internal/fv;->sZ:I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->ta:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->hN:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->tb:Ljava/util/List;

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fv;->tc:Z

    return-void
.end method


# virtual methods
.method protected D(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected E(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/android/gms/internal/dw$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->rI:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw$a;->bw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/dw$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw$a;->bw()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw$a;->bw()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sJ:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sK:Lcom/google/android/gms/internal/fv$a;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sL:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sM:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/fv;->sN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sO:Lcom/google/android/gms/internal/fv$b;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sP:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->ml:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/google/android/gms/internal/fv;->dI:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sm:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sQ:Lcom/google/android/gms/internal/fv$c;

    goto :goto_0

    :pswitch_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fv;->sR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sS:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sT:Lcom/google/android/gms/internal/fv$d;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sU:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget v0, p0, Lcom/google/android/gms/internal/fv;->sV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sW:Ljava/util/List;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sX:Ljava/util/List;

    goto :goto_0

    :pswitch_13
    iget v0, p0, Lcom/google/android/gms/internal/fv;->sY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    iget v0, p0, Lcom/google/android/gms/internal/fv;->sZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->ta:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->hN:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->tb:Ljava/util/List;

    goto :goto_0

    :pswitch_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fv;->tc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public bp()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dw$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    return-object v0
.end method

.method dD()Lcom/google/android/gms/internal/fv$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sK:Lcom/google/android/gms/internal/fv$a;

    return-object v0
.end method

.method dE()Lcom/google/android/gms/internal/fv$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sO:Lcom/google/android/gms/internal/fv$b;

    return-object v0
.end method

.method dF()Lcom/google/android/gms/internal/fv$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sQ:Lcom/google/android/gms/internal/fv$c;

    return-object v0
.end method

.method dG()Lcom/google/android/gms/internal/fv$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sT:Lcom/google/android/gms/internal/fv$d;

    return-object v0
.end method

.method dH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sW:Ljava/util/List;

    return-object v0
.end method

.method dI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sX:Ljava/util/List;

    return-object v0
.end method

.method dJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fv$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->tb:Ljava/util/List;

    return-object v0
.end method

.method public dK()Lcom/google/android/gms/internal/fv;
    .locals 0

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fv;->CREATOR:Lcom/google/android/gms/internal/fw;

    const/4 v0, 0x0

    return v0
.end method

.method di()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->rI:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/fv;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fv;

    sget-object v0, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/dw$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/dw$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv;->b(Lcom/google/android/gms/internal/dw$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fv;->b(Lcom/google/android/gms/internal/dw$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/dw$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->dK()Lcom/google/android/gms/internal/fv;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sJ:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sL:Ljava/lang/String;

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sM:Ljava/lang/String;

    return-object v0
.end method

.method public getCircledByCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->sN:I

    return v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->ml:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->dI:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sm:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sS:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->sU:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->sV:I

    return v0
.end method

.method public getPlusOneCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->sY:I

    return v0
.end method

.method public getRelationshipStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->sZ:I

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->ta:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->hN:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fv;->iM:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/fv;->rH:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/dw$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$a;->bw()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv;->b(Lcom/google/android/gms/internal/dw$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isPlusUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fv;->sR:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fv;->tc:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fv;->CREATOR:Lcom/google/android/gms/internal/fw;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fw;->a(Lcom/google/android/gms/internal/fv;Landroid/os/Parcel;I)V

    return-void
.end method
