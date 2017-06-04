.class Lcom/sec/samsung/gallery/features/GalleryFeatureImp;
.super Ljava/lang/Object;
.source "GalleryFeatureImp.java"

# interfaces
.implements Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;


# static fields
.field private static final FEATURE_DEBUG:Z = false

.field private static final PREFERENCE_FILE_NAME:Ljava/lang/String; = "gallery_feature"

.field private static final TAG:Ljava/lang/String; = "GalleryFeature"


# instance fields
.field private mApp:Landroid/app/Application;

.field private final mFeatureClassSet:Lcom/sec/samsung/gallery/features/FeatureClassSet;

.field private final mFeatureHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sec/samsung/gallery/features/FeatureNames;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/features/FeatureClassSet;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/features/FeatureClassSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureClassSet:Lcom/sec/samsung/gallery/features/FeatureClassSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mApp:Landroid/app/Application;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "gallery_feature"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method private findFromPreference(Lcom/sec/samsung/gallery/features/Feature;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/features/Feature;->usePreference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private printDebugMsg(Lcom/sec/samsung/gallery/features/FeatureNames;ZJZLjava/lang/Boolean;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p3, v2, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_0

    const-string/jumbo v1, "GalleryFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "HashMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p5, :cond_1

    const-string/jumbo v1, "GalleryFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GalleryFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NoCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putOnPreference(Ljava/lang/String;Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method createFeatureInstance(Lcom/sec/samsung/gallery/features/FeatureNames;)Lcom/sec/samsung/gallery/features/Feature;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureClassSet:Lcom/sec/samsung/gallery/features/FeatureClassSet;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->createFeatureInstance(Lcom/sec/samsung/gallery/features/FeatureNames;)Lcom/sec/samsung/gallery/features/Feature;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Do not use private for Feature class declaration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ClassNotFoundException: Can not find Feature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/features/FeatureNames;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    :goto_0
    return v7

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->createFeatureInstance(Lcom/sec/samsung/gallery/features/FeatureNames;)Lcom/sec/samsung/gallery/features/Feature;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->findFromPreference(Lcom/sec/samsung/gallery/features/Feature;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mPreference:Landroid/content/SharedPreferences;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v7, v4

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mApp:Landroid/app/Application;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/features/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/features/Feature;->usePreference()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->putOnPreference(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v4

    goto :goto_0

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    throw v7
.end method

.method public setEnable(Lcom/sec/samsung/gallery/features/FeatureNames;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;->mFeatureHashMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
