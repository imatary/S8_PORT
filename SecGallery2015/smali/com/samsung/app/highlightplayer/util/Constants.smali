.class public Lcom/samsung/app/highlightplayer/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CMH_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.cmh/story"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Constants;->CMH_URI:Landroid/net/Uri;

    return-void
.end method
