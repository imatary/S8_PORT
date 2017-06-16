.class public Lcom/samsung/android/sdk/pen/pen/SpenPenManager;
.super Ljava/lang/Object;
.source "SpenPenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;
    }
.end annotation


# static fields
.field private static final PLUGIN_TYPE:Ljava/lang/String; = "Pen"

.field public static final SPEN_BEAUTIFY:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Beautify"

.field public static final SPEN_BRUSH:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Brush"

.field public static final SPEN_CHINESE_BRUSH:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

.field public static final SPEN_ERASER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Eraser"

.field public static final SPEN_FOUNTAIN_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field public static final SPEN_INK_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.InkPen"

.field public static final SPEN_MAGIC_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field public static final SPEN_MARKER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field private static final SPEN_MONTBLANC_FOUNTAIN_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

.field private static final SPEN_MONTBLANC_OBLIQUE_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

.field public static final SPEN_OBLIQUE_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

.field public static final SPEN_PENCIL:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    return-void
.end method

.method public createPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    const-string v3, "Pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->version:I

    iget v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v2, v5, v1, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    const-string v3, "Pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->version:I

    iget v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v1, p2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'className\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    const-string v3, "Pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v2, v5, v1, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPen(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'packageName\' or \'className\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    const-string v3, "Pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v1, p2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : parameter \'pen\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->unloadPlugin(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->close()V

    return-void
.end method

.method public getPenInfoList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v4

    const-string v5, "Pen"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    iput v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->version:I

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->iconImageUri:Ljava/lang/String;

    sget-boolean v5, Lcom/samsung/android/sdk/pen/Spen;->IS_SPEN_PRELOAD_MODE:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public getPrivateKeyHint(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    const-string v3, "Pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->version:I

    iget v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPrivateKeyHint(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;-><init>(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->setListener(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;)V

    :cond_0
    return-void
.end method
