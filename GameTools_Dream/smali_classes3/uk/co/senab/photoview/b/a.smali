.class public final Luk/co/senab/photoview/b/a;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static a:Luk/co/senab/photoview/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luk/co/senab/photoview/b/c;

    invoke-direct {v0}, Luk/co/senab/photoview/b/c;-><init>()V

    sput-object v0, Luk/co/senab/photoview/b/a;->a:Luk/co/senab/photoview/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Luk/co/senab/photoview/b/b;
    .locals 1

    sget-object v0, Luk/co/senab/photoview/b/a;->a:Luk/co/senab/photoview/b/b;

    return-object v0
.end method

.method public static a(Luk/co/senab/photoview/b/b;)V
    .locals 0

    sput-object p0, Luk/co/senab/photoview/b/a;->a:Luk/co/senab/photoview/b/b;

    return-void
.end method
