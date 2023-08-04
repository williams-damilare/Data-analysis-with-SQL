select * from PortfolioProject..CovidDeaths order by 3,4
--select * from PortfolioProject..CovidVaccinations order by 3,4

--select Location,date,total_cases,new_cases,total_deaths,population from PortfolioProject..CovidDeaths
--order by 1,2

--Looking at Total_Cases vs Total Deaths
--Shows likelihood of dying if you contract covid in your country
select Location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths
where location like '%states%'
order by 1,2

--Looking at Total_Cases vs Population
--Shows what percentage of poulation got covid
select Location,date,population,total_cases,(total_cases/population)*100 as PercentPopulationInfected
from PortfolioProject..CovidDeaths
--where location like '%states%'
order by 1,2

--Look at countries with the highest infection rate compared to population
select Location,population,MAX(total_cases) as HighestInfectedCount, MAX((total_cases/population))*100 as PercentPopulationInfected
from PortfolioProject..CovidDeaths
Group by population,location
--where location like '%states%'
order by PercentPopulationInfected Desc


